CREATE TABLE `admin_activity_logs` (
	`id` varchar(36) NOT NULL,
	`actor_id` varchar(36) NOT NULL,
	`target_user_id` varchar(36),
	`action_type` text NOT NULL,
	`before_state` json,
	`after_state` json,
	`reason` text,
	`ip_address` text,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `admin_activity_logs_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `audit_change_log` (
	`id` varchar(36) NOT NULL,
	`audit_id` varchar(36),
	`user_id` varchar(36) NOT NULL,
	`client_id` varchar(36),
	`department_id` varchar(36),
	`action_type` text NOT NULL,
	`entity_type` text NOT NULL,
	`entity_id` varchar(255),
	`before_state` json,
	`after_state` json,
	`reason` text,
	`ip_address` text,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `audit_change_log_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `audit_contexts` (
	`id` varchar(36) NOT NULL,
	`user_id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`department_id` varchar(36),
	`period` text NOT NULL DEFAULT ('daily'),
	`start_date` datetime NOT NULL,
	`end_date` datetime NOT NULL,
	`status` text NOT NULL DEFAULT ('active'),
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`last_active_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `audit_contexts_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `audit_logs` (
	`id` varchar(36) NOT NULL,
	`user_id` varchar(36),
	`action` text NOT NULL,
	`entity` text NOT NULL,
	`entity_id` varchar(255),
	`details` text,
	`ip_address` text,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `audit_logs_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `audit_reissue_permissions` (
	`id` varchar(36) NOT NULL,
	`audit_id` varchar(36) NOT NULL,
	`granted_to` varchar(36) NOT NULL,
	`granted_by` varchar(36) NOT NULL,
	`granted_at` timestamp NOT NULL DEFAULT (now()),
	`expires_at` timestamp,
	`scope` text NOT NULL DEFAULT ('edit_after_submission'),
	`reason` text,
	`active` boolean DEFAULT true,
	CONSTRAINT `audit_reissue_permissions_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `audits` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`department_id` varchar(36) NOT NULL,
	`period` text NOT NULL DEFAULT ('daily'),
	`start_date` datetime NOT NULL,
	`end_date` datetime NOT NULL,
	`status` text NOT NULL DEFAULT ('draft'),
	`submitted_by` varchar(36),
	`submitted_at` timestamp,
	`locked_by` varchar(36),
	`locked_at` timestamp,
	`notes` text,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `audits_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `categories` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`name` text NOT NULL,
	`status` text NOT NULL DEFAULT ('active'),
	`created_by` varchar(36),
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`deleted_at` timestamp,
	`deleted_by` varchar(36),
	CONSTRAINT `categories_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `clients` (
	`id` varchar(36) NOT NULL,
	`organization_id` varchar(36),
	`name` text NOT NULL,
	`status` text NOT NULL DEFAULT ('active'),
	`risk_score` int DEFAULT 0,
	`variance_threshold` decimal(5,2) DEFAULT '5.00',
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `clients_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `data_exports` (
	`id` varchar(36) NOT NULL,
	`organization_id` varchar(36) NOT NULL,
	`created_by` varchar(36) NOT NULL,
	`format` text NOT NULL,
	`status` text NOT NULL DEFAULT ('pending'),
	`filename` text,
	`file_path` text,
	`file_size` int,
	`data_types` json NOT NULL,
	`date_range_start` date,
	`date_range_end` date,
	`record_count` int,
	`error` text,
	`expires_at` timestamp,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`completed_at` timestamp,
	CONSTRAINT `data_exports_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `departments` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`category_id` varchar(36),
	`name` text NOT NULL,
	`status` text NOT NULL DEFAULT ('active'),
	`suspend_reason` text,
	`created_by` varchar(36),
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `departments_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `exception_activity` (
	`id` varchar(36) NOT NULL,
	`exception_id` varchar(36) NOT NULL,
	`activity_type` text NOT NULL DEFAULT ('note'),
	`message` text NOT NULL,
	`previous_value` text,
	`new_value` text,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `exception_activity_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `exception_comments` (
	`id` varchar(36) NOT NULL,
	`exception_id` varchar(36) NOT NULL,
	`comment` text NOT NULL,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `exception_comments_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `exceptions` (
	`id` varchar(36) NOT NULL,
	`case_number` text NOT NULL,
	`client_id` varchar(36),
	`outlet_id` varchar(36),
	`department_id` varchar(36),
	`date` text NOT NULL DEFAULT CURRENT_DATE::text,
	`summary` text NOT NULL,
	`description` text,
	`impact` text,
	`severity` text DEFAULT ('medium'),
	`status` text DEFAULT ('open'),
	`outcome` text DEFAULT ('pending'),
	`evidence_urls` json,
	`assigned_to` varchar(36),
	`resolved_at` timestamp,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	`deleted_at` timestamp,
	`deleted_by` varchar(36),
	`delete_reason` text,
	CONSTRAINT `exceptions_id` PRIMARY KEY(`id`),
	CONSTRAINT `exceptions_case_number_unique` UNIQUE(`case_number`)
);
--> statement-breakpoint
CREATE TABLE `goods_received_notes` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`supplier_id` varchar(36),
	`supplier_name` text NOT NULL,
	`date` datetime NOT NULL,
	`invoice_ref` text NOT NULL,
	`amount` decimal(12,2) NOT NULL,
	`status` text NOT NULL DEFAULT ('pending'),
	`evidence_url` text,
	`evidence_file_name` text,
	`created_by` varchar(36),
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `goods_received_notes_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `inventory_department_categories` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`inventory_department_id` varchar(36) NOT NULL,
	`category_id` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `inventory_department_categories_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `inventory_departments` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`store_name_id` varchar(36) NOT NULL,
	`department_id` varchar(36),
	`inventory_type` text NOT NULL,
	`status` text NOT NULL DEFAULT ('active'),
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `inventory_departments_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `item_serial_events` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`date` datetime NOT NULL,
	`srd_id` varchar(36) NOT NULL,
	`item_id` varchar(36) NOT NULL,
	`event_type` text NOT NULL,
	`ref_id` varchar(255),
	`serial_number` text NOT NULL,
	`created_by` varchar(36),
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `item_serial_events_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `items` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`category_id` varchar(36),
	`supplier_id` varchar(36),
	`name` text NOT NULL,
	`sku` text,
	`category` text NOT NULL DEFAULT ('general'),
	`unit` text NOT NULL DEFAULT ('pcs'),
	`cost_price` decimal(12,2) DEFAULT '0.00',
	`selling_price` decimal(12,2) DEFAULT '0.00',
	`wholesale_price` decimal(12,2),
	`retail_price` decimal(12,2),
	`vip_price` decimal(12,2),
	`custom_price` decimal(12,2),
	`reorder_level` int DEFAULT 10,
	`serial_tracking` text NOT NULL DEFAULT ('none'),
	`serial_notes` text,
	`status` text NOT NULL DEFAULT ('active'),
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `items_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `notifications` (
	`id` varchar(36) NOT NULL,
	`organization_id` varchar(36) NOT NULL,
	`user_id` varchar(36),
	`type` text NOT NULL,
	`title` text NOT NULL,
	`message` text NOT NULL,
	`ref_type` text,
	`ref_id` varchar(255),
	`is_read` boolean NOT NULL DEFAULT false,
	`email_sent` boolean NOT NULL DEFAULT false,
	`email_sent_at` timestamp,
	`email_error` text,
	`metadata` json,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `notifications_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `organization_settings` (
	`id` varchar(36) NOT NULL,
	`organization_id` varchar(36) NOT NULL,
	`company_name` text,
	`address` text,
	`email` text,
	`phone` text,
	`currency` text NOT NULL DEFAULT ('NGN'),
	`logo_url` text,
	`report_footer_note` text,
	`updated_by` varchar(36),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `organization_settings_id` PRIMARY KEY(`id`),
	CONSTRAINT `organization_settings_organization_id_unique` UNIQUE(`organization_id`)
);
--> statement-breakpoint
CREATE TABLE `organizations` (
	`id` varchar(36) NOT NULL,
	`name` text NOT NULL,
	`type` text NOT NULL DEFAULT ('company'),
	`email` text,
	`phone` text,
	`address` text,
	`currency_code` text NOT NULL DEFAULT ('NGN'),
	`is_suspended` boolean DEFAULT false,
	`suspended_at` timestamp,
	`suspended_reason` text,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `organizations_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `payment_declarations` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`department_id` varchar(36) NOT NULL,
	`date` datetime NOT NULL,
	`reported_cash` decimal(12,2) DEFAULT '0.00',
	`reported_pos_settlement` decimal(12,2) DEFAULT '0.00',
	`reported_transfers` decimal(12,2) DEFAULT '0.00',
	`total_reported` decimal(12,2) DEFAULT '0.00',
	`notes` text,
	`supporting_documents` json,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `payment_declarations_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `payments` (
	`id` varchar(36) NOT NULL,
	`organization_id` varchar(36) NOT NULL,
	`amount` decimal(12,2) NOT NULL,
	`currency` text NOT NULL DEFAULT ('NGN'),
	`period_covered_start` datetime NOT NULL,
	`period_covered_end` datetime NOT NULL,
	`status` text NOT NULL DEFAULT ('pending'),
	`reference` text,
	`notes` text,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `payments_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `platform_admin_audit_log` (
	`id` varchar(36) NOT NULL,
	`admin_id` varchar(36) NOT NULL,
	`action_type` text NOT NULL,
	`target_type` text NOT NULL,
	`target_id` varchar(255),
	`before_json` json,
	`after_json` json,
	`notes` text,
	`ip_address` text,
	`user_agent` text,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `platform_admin_audit_log_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `platform_admin_users` (
	`id` varchar(36) NOT NULL,
	`email` text NOT NULL,
	`password` text NOT NULL,
	`name` text NOT NULL,
	`role` text NOT NULL DEFAULT ('readonly_admin'),
	`is_active` boolean NOT NULL DEFAULT true,
	`last_login_at` timestamp,
	`login_attempts` int DEFAULT 0,
	`locked_until` timestamp,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `platform_admin_users_id` PRIMARY KEY(`id`),
	CONSTRAINT `platform_admin_users_email_unique` UNIQUE(`email`)
);
--> statement-breakpoint
CREATE TABLE `purchase_item_events` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`srd_id` varchar(36),
	`item_id` varchar(36) NOT NULL,
	`date` datetime NOT NULL,
	`qty` decimal(10,2) NOT NULL,
	`unit_cost_at_purchase` decimal(12,2) NOT NULL,
	`total_cost` decimal(12,2) NOT NULL,
	`supplier_name` text,
	`invoice_no` text,
	`notes` text,
	`created_by` varchar(36),
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `purchase_item_events_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `purchase_lines` (
	`id` varchar(36) NOT NULL,
	`purchase_id` varchar(36) NOT NULL,
	`item_id` varchar(36) NOT NULL,
	`quantity` decimal(10,2) NOT NULL,
	`unit_price` decimal(12,2) NOT NULL,
	`total_price` decimal(12,2) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `purchase_lines_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `purchases` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`department_id` varchar(36) NOT NULL,
	`supplier_name` text NOT NULL,
	`invoice_ref` text NOT NULL,
	`invoice_date` datetime NOT NULL,
	`total_amount` decimal(12,2) NOT NULL,
	`status` text DEFAULT ('draft'),
	`evidence_url` text,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `purchases_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `receivable_history` (
	`id` varchar(36) NOT NULL,
	`receivable_id` varchar(36) NOT NULL,
	`action` text NOT NULL,
	`previous_status` text,
	`new_status` text,
	`amount_paid` decimal(12,2),
	`notes` text,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `receivable_history_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `receivables` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`department_id` varchar(36) NOT NULL,
	`audit_date` datetime NOT NULL,
	`variance_amount` decimal(12,2) NOT NULL,
	`amount_paid` decimal(12,2) DEFAULT '0.00',
	`balance_remaining` decimal(12,2) NOT NULL,
	`status` text NOT NULL DEFAULT ('open'),
	`comments` text,
	`evidence_url` text,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `receivables_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `reconciliations` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`department_id` varchar(36) NOT NULL,
	`date` datetime NOT NULL,
	`opening_stock` json NOT NULL,
	`additions` json NOT NULL,
	`expected_usage` json NOT NULL,
	`physical_count` json NOT NULL,
	`variance_qty` decimal(10,2) DEFAULT '0.00',
	`variance_value` decimal(12,2) DEFAULT '0.00',
	`status` text DEFAULT ('pending'),
	`approved_by` varchar(36),
	`approved_at` timestamp,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `reconciliations_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `sales_entries` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`department_id` varchar(36) NOT NULL,
	`date` datetime NOT NULL,
	`shift` text DEFAULT ('full'),
	`amount` decimal(12,2) DEFAULT '0.00',
	`complimentary_amount` decimal(12,2) DEFAULT '0.00',
	`vouchers_amount` decimal(12,2) DEFAULT '0.00',
	`voids_amount` decimal(12,2) DEFAULT '0.00',
	`others_amount` decimal(12,2) DEFAULT '0.00',
	`cash_amount` decimal(12,2) DEFAULT '0.00',
	`pos_amount` decimal(12,2) DEFAULT '0.00',
	`transfer_amount` decimal(12,2) DEFAULT '0.00',
	`discounts_amount` decimal(12,2) DEFAULT '0.00',
	`total_sales` decimal(12,2) NOT NULL,
	`mode` text DEFAULT ('summary'),
	`evidence_url` text,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `sales_entries_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `srd_ledger_daily` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`srd_id` varchar(36) NOT NULL,
	`srd_type` text NOT NULL,
	`item_id` varchar(36) NOT NULL,
	`ledger_date` date NOT NULL,
	`opening_qty` decimal(18,2) NOT NULL DEFAULT '0',
	`closing_qty` decimal(18,2) NOT NULL DEFAULT '0',
	`purchase_added_qty` decimal(18,2) NOT NULL DEFAULT '0',
	`returns_in_qty` decimal(18,2) NOT NULL DEFAULT '0',
	`req_dep_total_qty` decimal(18,2) NOT NULL DEFAULT '0',
	`from_main_qty` decimal(18,2) NOT NULL DEFAULT '0',
	`inter_in_qty` decimal(18,2) NOT NULL DEFAULT '0',
	`inter_out_qty` decimal(18,2) NOT NULL DEFAULT '0',
	`returns_out_to_main` decimal(18,2) NOT NULL DEFAULT '0',
	`sold_qty` decimal(18,2) NOT NULL DEFAULT '0',
	`waste_qty` decimal(18,2) NOT NULL DEFAULT '0',
	`write_off_qty` decimal(18,2) NOT NULL DEFAULT '0',
	`adjustment_qty` decimal(18,2) NOT NULL DEFAULT '0',
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `srd_ledger_daily_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `srd_stock_movements` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`movement_date` date NOT NULL,
	`event_type` text NOT NULL,
	`from_srd_id` varchar(36),
	`to_srd_id` varchar(36),
	`item_id` varchar(36) NOT NULL,
	`qty` decimal(18,2) NOT NULL,
	`description` text,
	`is_deleted` boolean NOT NULL DEFAULT false,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `srd_stock_movements_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `srd_transfers` (
	`id` varchar(36) NOT NULL,
	`ref_id` varchar(255) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`from_srd_id` varchar(36) NOT NULL,
	`to_srd_id` varchar(36) NOT NULL,
	`item_id` varchar(36) NOT NULL,
	`qty` decimal(10,2) NOT NULL,
	`transfer_date` datetime NOT NULL,
	`transfer_type` text NOT NULL DEFAULT ('transfer'),
	`notes` text,
	`status` text NOT NULL DEFAULT ('posted'),
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `srd_transfers_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `stock_counts` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`department_id` varchar(36) NOT NULL,
	`store_department_id` varchar(36),
	`item_id` varchar(36) NOT NULL,
	`date` datetime NOT NULL,
	`opening_qty` decimal(10,2) DEFAULT '0.00',
	`added_qty` decimal(10,2) DEFAULT '0.00',
	`received_qty` decimal(10,2) DEFAULT '0.00',
	`sold_qty` decimal(10,2) DEFAULT '0.00',
	`expected_closing_qty` decimal(10,2) DEFAULT '0.00',
	`actual_closing_qty` decimal(10,2),
	`variance_qty` decimal(10,2) DEFAULT '0.00',
	`variance_value` decimal(12,2) DEFAULT '0.00',
	`cost_price_snapshot` decimal(12,2) DEFAULT '0.00',
	`selling_price_snapshot` decimal(12,2) DEFAULT '0.00',
	`notes` text,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `stock_counts_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `stock_movement_lines` (
	`id` varchar(36) NOT NULL,
	`movement_id` varchar(36) NOT NULL,
	`item_id` varchar(36) NOT NULL,
	`qty` decimal(10,2) NOT NULL,
	`unit_cost` decimal(12,2) NOT NULL,
	`line_value` decimal(12,2) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `stock_movement_lines_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `stock_movements` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`department_id` varchar(36) NOT NULL,
	`outlet_id` varchar(36),
	`movement_type` text NOT NULL,
	`from_srd_id` varchar(36),
	`to_srd_id` varchar(36),
	`date` timestamp NOT NULL DEFAULT (now()),
	`adjustment_direction` text,
	`source_location` text,
	`destination_location` text,
	`items_description` text,
	`total_qty` decimal(10,2) DEFAULT '0.00',
	`total_value` decimal(12,2) DEFAULT '0.00',
	`notes` text,
	`authorized_by` text,
	`approved_by` varchar(36),
	`approved_at` timestamp,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`idempotency_key` varchar(255),
	`source_ref` varchar(255),
	CONSTRAINT `stock_movements_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `store_issue_lines` (
	`id` varchar(36) NOT NULL,
	`store_issue_id` varchar(36) NOT NULL,
	`item_id` varchar(36) NOT NULL,
	`qty_issued` decimal(10,2) NOT NULL,
	`cost_price_snapshot` decimal(12,2) DEFAULT '0.00',
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `store_issue_lines_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `store_issues` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`issue_date` datetime NOT NULL,
	`from_department_id` varchar(36) NOT NULL,
	`to_department_id` varchar(36) NOT NULL,
	`notes` text,
	`status` text NOT NULL DEFAULT ('posted'),
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `store_issues_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `store_names` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`name` text NOT NULL,
	`status` text NOT NULL DEFAULT ('active'),
	`created_by` varchar(36),
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `store_names_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `store_stock` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`store_department_id` varchar(36) NOT NULL,
	`item_id` varchar(36) NOT NULL,
	`date` datetime NOT NULL,
	`opening_qty` decimal(10,2) DEFAULT '0.00',
	`added_qty` decimal(10,2) DEFAULT '0.00',
	`issued_qty` decimal(10,2) DEFAULT '0.00',
	`transfers_in_qty` decimal(10,2) DEFAULT '0.00',
	`transfers_out_qty` decimal(10,2) DEFAULT '0.00',
	`return_in_qty` decimal(10,2) DEFAULT '0.00',
	`inter_dept_in_qty` decimal(10,2) DEFAULT '0.00',
	`inter_dept_out_qty` decimal(10,2) DEFAULT '0.00',
	`waste_qty` decimal(10,2) DEFAULT '0.00',
	`write_off_qty` decimal(10,2) DEFAULT '0.00',
	`adjustment_qty` decimal(10,2) DEFAULT '0.00',
	`sold_qty` decimal(10,2) DEFAULT '0.00',
	`closing_qty` decimal(10,2) DEFAULT '0.00',
	`physical_closing_qty` decimal(10,2),
	`variance_qty` decimal(10,2) DEFAULT '0.00',
	`cost_price_snapshot` decimal(12,2) DEFAULT '0.00',
	`created_by` varchar(36),
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `store_stock_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `subscription_plans` (
	`id` varchar(36) NOT NULL,
	`slug` text NOT NULL,
	`display_name` text NOT NULL,
	`description` text,
	`is_active` boolean NOT NULL DEFAULT true,
	`sort_order` int NOT NULL DEFAULT 0,
	`monthly_price` decimal(12,2) NOT NULL DEFAULT '0',
	`quarterly_price` decimal(12,2) NOT NULL DEFAULT '0',
	`yearly_price` decimal(12,2) NOT NULL DEFAULT '0',
	`currency` text NOT NULL DEFAULT ('NGN'),
	`max_clients` int NOT NULL DEFAULT 1,
	`max_srd_departments_per_client` int NOT NULL DEFAULT 4,
	`max_main_store_per_client` int NOT NULL DEFAULT 1,
	`max_seats` int NOT NULL DEFAULT 2,
	`retention_days` int NOT NULL DEFAULT 30,
	`can_view_reports` boolean NOT NULL DEFAULT true,
	`can_download_reports` boolean NOT NULL DEFAULT false,
	`can_print_reports` boolean NOT NULL DEFAULT false,
	`can_access_purchases_register_page` boolean NOT NULL DEFAULT false,
	`can_access_second_hit_page` boolean NOT NULL DEFAULT false,
	`can_download_second_hit_full_table` boolean NOT NULL DEFAULT false,
	`can_download_main_store_ledger_summary` boolean NOT NULL DEFAULT false,
	`can_use_beta_features` boolean NOT NULL DEFAULT false,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `subscription_plans_id` PRIMARY KEY(`id`),
	CONSTRAINT `subscription_plans_slug_unique` UNIQUE(`slug`)
);
--> statement-breakpoint
CREATE TABLE `subscriptions` (
	`id` varchar(36) NOT NULL,
	`organization_id` varchar(36) NOT NULL,
	`plan_name` text NOT NULL DEFAULT ('starter'),
	`billing_period` text NOT NULL DEFAULT ('monthly'),
	`slots_purchased` int NOT NULL DEFAULT 1,
	`status` text NOT NULL DEFAULT ('active'),
	`provider` text DEFAULT ('manual'),
	`start_date` timestamp NOT NULL DEFAULT (now()),
	`next_billing_date` timestamp,
	`expires_at` timestamp,
	`end_date` timestamp,
	`notes` text,
	`updated_by` varchar(36),
	`max_clients_override` int,
	`max_srd_departments_override` int,
	`max_main_store_override` int,
	`max_seats_override` int,
	`retention_days_override` int,
	`paystack_customer_code` text,
	`paystack_subscription_code` text,
	`paystack_plan_code` text,
	`paystack_email_token` text,
	`last_payment_date` timestamp,
	`last_payment_amount` decimal(12,2),
	`last_payment_reference` text,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `subscriptions_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `suppliers` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`name` text NOT NULL,
	`contact_person` text,
	`phone` text,
	`email` text,
	`address` text,
	`status` text NOT NULL DEFAULT ('active'),
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `suppliers_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `surplus_history` (
	`id` varchar(36) NOT NULL,
	`surplus_id` varchar(36) NOT NULL,
	`action` text NOT NULL,
	`previous_status` text,
	`new_status` text,
	`notes` text,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `surplus_history_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `surpluses` (
	`id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`department_id` varchar(36) NOT NULL,
	`audit_date` datetime NOT NULL,
	`surplus_amount` decimal(12,2) NOT NULL,
	`status` text NOT NULL DEFAULT ('open'),
	`classification` text,
	`comments` text,
	`evidence_url` text,
	`created_by` varchar(36) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `surpluses_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `system_settings` (
	`id` varchar(36) NOT NULL,
	`key` text NOT NULL,
	`value` json NOT NULL,
	`updated_by` varchar(36),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `system_settings_id` PRIMARY KEY(`id`),
	CONSTRAINT `system_settings_key_unique` UNIQUE(`key`)
);
--> statement-breakpoint
CREATE TABLE `user_client_access` (
	`id` varchar(36) NOT NULL,
	`user_id` varchar(36) NOT NULL,
	`client_id` varchar(36) NOT NULL,
	`status` text NOT NULL DEFAULT ('assigned'),
	`assigned_by` varchar(36) NOT NULL,
	`assigned_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	`suspend_reason` text,
	`notes` text,
	CONSTRAINT `user_client_access_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `user_settings` (
	`id` varchar(36) NOT NULL,
	`user_id` varchar(36) NOT NULL,
	`theme` text NOT NULL DEFAULT ('light'),
	`auto_save_enabled` boolean NOT NULL DEFAULT true,
	`auto_save_interval_seconds` int NOT NULL DEFAULT 60,
	`variance_threshold_percent` decimal(5,2) NOT NULL DEFAULT '5.00',
	`email_notifications_enabled` boolean NOT NULL DEFAULT true,
	`exception_alerts_enabled` boolean NOT NULL DEFAULT true,
	`variance_alerts_enabled` boolean NOT NULL DEFAULT true,
	`daily_digest_enabled` boolean NOT NULL DEFAULT false,
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `user_settings_id` PRIMARY KEY(`id`),
	CONSTRAINT `user_settings_user_id_unique` UNIQUE(`user_id`)
);
--> statement-breakpoint
CREATE TABLE `users` (
	`id` varchar(36) NOT NULL,
	`organization_id` varchar(36),
	`organization_role` text DEFAULT ('member'),
	`username` text NOT NULL,
	`email` text NOT NULL,
	`password` text NOT NULL,
	`full_name` text NOT NULL,
	`role` text NOT NULL DEFAULT ('auditor'),
	`phone` text,
	`status` text NOT NULL DEFAULT ('active'),
	`email_verified` boolean DEFAULT false,
	`verification_token` text,
	`verification_expiry` timestamp,
	`must_change_password` boolean DEFAULT false,
	`password_reset_token` text,
	`password_reset_expiry` timestamp,
	`login_attempts` int DEFAULT 0,
	`locked_until` timestamp,
	`is_locked` boolean DEFAULT false,
	`locked_reason` text,
	`last_login_at` timestamp,
	`access_scope` json,
	`created_at` timestamp NOT NULL DEFAULT (now()),
	`updated_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `users_id` PRIMARY KEY(`id`),
	CONSTRAINT `users_username_unique` UNIQUE(`username`),
	CONSTRAINT `users_email_unique` UNIQUE(`email`)
);
--> statement-breakpoint
ALTER TABLE `admin_activity_logs` ADD CONSTRAINT `admin_activity_logs_actor_id_users_id_fk` FOREIGN KEY (`actor_id`) REFERENCES `users`(`id`) ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `admin_activity_logs` ADD CONSTRAINT `admin_activity_logs_target_user_id_users_id_fk` FOREIGN KEY (`target_user_id`) REFERENCES `users`(`id`) ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audit_change_log` ADD CONSTRAINT `audit_change_log_audit_id_audits_id_fk` FOREIGN KEY (`audit_id`) REFERENCES `audits`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audit_change_log` ADD CONSTRAINT `audit_change_log_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audit_change_log` ADD CONSTRAINT `audit_change_log_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audit_change_log` ADD CONSTRAINT `audit_change_log_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audit_contexts` ADD CONSTRAINT `audit_contexts_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audit_contexts` ADD CONSTRAINT `audit_contexts_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audit_contexts` ADD CONSTRAINT `audit_contexts_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audit_logs` ADD CONSTRAINT `audit_logs_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audit_reissue_permissions` ADD CONSTRAINT `audit_reissue_permissions_audit_id_audits_id_fk` FOREIGN KEY (`audit_id`) REFERENCES `audits`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audit_reissue_permissions` ADD CONSTRAINT `audit_reissue_permissions_granted_to_users_id_fk` FOREIGN KEY (`granted_to`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audit_reissue_permissions` ADD CONSTRAINT `audit_reissue_permissions_granted_by_users_id_fk` FOREIGN KEY (`granted_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audits` ADD CONSTRAINT `audits_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audits` ADD CONSTRAINT `audits_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audits` ADD CONSTRAINT `audits_submitted_by_users_id_fk` FOREIGN KEY (`submitted_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audits` ADD CONSTRAINT `audits_locked_by_users_id_fk` FOREIGN KEY (`locked_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `audits` ADD CONSTRAINT `audits_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `categories` ADD CONSTRAINT `categories_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `categories` ADD CONSTRAINT `categories_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `categories` ADD CONSTRAINT `categories_deleted_by_users_id_fk` FOREIGN KEY (`deleted_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `clients` ADD CONSTRAINT `clients_organization_id_organizations_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `organizations`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `data_exports` ADD CONSTRAINT `data_exports_organization_id_organizations_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `organizations`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `data_exports` ADD CONSTRAINT `data_exports_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `departments` ADD CONSTRAINT `departments_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `departments` ADD CONSTRAINT `departments_category_id_categories_id_fk` FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`) ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `departments` ADD CONSTRAINT `departments_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `exception_activity` ADD CONSTRAINT `exception_activity_exception_id_exceptions_id_fk` FOREIGN KEY (`exception_id`) REFERENCES `exceptions`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `exception_activity` ADD CONSTRAINT `exception_activity_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `exception_comments` ADD CONSTRAINT `exception_comments_exception_id_exceptions_id_fk` FOREIGN KEY (`exception_id`) REFERENCES `exceptions`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `exception_comments` ADD CONSTRAINT `exception_comments_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `exceptions` ADD CONSTRAINT `exceptions_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `exceptions` ADD CONSTRAINT `exceptions_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `exceptions` ADD CONSTRAINT `exceptions_assigned_to_users_id_fk` FOREIGN KEY (`assigned_to`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `exceptions` ADD CONSTRAINT `exceptions_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `exceptions` ADD CONSTRAINT `exceptions_deleted_by_users_id_fk` FOREIGN KEY (`deleted_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `goods_received_notes` ADD CONSTRAINT `goods_received_notes_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `goods_received_notes` ADD CONSTRAINT `goods_received_notes_supplier_id_suppliers_id_fk` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers`(`id`) ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `goods_received_notes` ADD CONSTRAINT `goods_received_notes_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `inventory_department_categories` ADD CONSTRAINT `inventory_department_categories_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `inventory_department_categories` ADD CONSTRAINT `inventory_department_categories_inventory_department_id_inventory_departments_id_fk` FOREIGN KEY (`inventory_department_id`) REFERENCES `inventory_departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `inventory_department_categories` ADD CONSTRAINT `inventory_department_categories_category_id_categories_id_fk` FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `inventory_departments` ADD CONSTRAINT `inventory_departments_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `inventory_departments` ADD CONSTRAINT `inventory_departments_store_name_id_store_names_id_fk` FOREIGN KEY (`store_name_id`) REFERENCES `store_names`(`id`) ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `inventory_departments` ADD CONSTRAINT `inventory_departments_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `item_serial_events` ADD CONSTRAINT `item_serial_events_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `item_serial_events` ADD CONSTRAINT `item_serial_events_srd_id_inventory_departments_id_fk` FOREIGN KEY (`srd_id`) REFERENCES `inventory_departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `item_serial_events` ADD CONSTRAINT `item_serial_events_item_id_items_id_fk` FOREIGN KEY (`item_id`) REFERENCES `items`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `item_serial_events` ADD CONSTRAINT `item_serial_events_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `items` ADD CONSTRAINT `items_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `items` ADD CONSTRAINT `items_category_id_categories_id_fk` FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`) ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `items` ADD CONSTRAINT `items_supplier_id_suppliers_id_fk` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers`(`id`) ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `notifications` ADD CONSTRAINT `notifications_organization_id_organizations_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `organizations`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `notifications` ADD CONSTRAINT `notifications_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `organization_settings` ADD CONSTRAINT `organization_settings_organization_id_organizations_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `organizations`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `organization_settings` ADD CONSTRAINT `organization_settings_updated_by_users_id_fk` FOREIGN KEY (`updated_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `payment_declarations` ADD CONSTRAINT `payment_declarations_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `payment_declarations` ADD CONSTRAINT `payment_declarations_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `payment_declarations` ADD CONSTRAINT `payment_declarations_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `payments` ADD CONSTRAINT `payments_organization_id_organizations_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `organizations`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `platform_admin_audit_log` ADD CONSTRAINT `platform_admin_audit_log_admin_id_platform_admin_users_id_fk` FOREIGN KEY (`admin_id`) REFERENCES `platform_admin_users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `purchase_item_events` ADD CONSTRAINT `purchase_item_events_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `purchase_item_events` ADD CONSTRAINT `purchase_item_events_srd_id_inventory_departments_id_fk` FOREIGN KEY (`srd_id`) REFERENCES `inventory_departments`(`id`) ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `purchase_item_events` ADD CONSTRAINT `purchase_item_events_item_id_items_id_fk` FOREIGN KEY (`item_id`) REFERENCES `items`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `purchase_item_events` ADD CONSTRAINT `purchase_item_events_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `purchase_lines` ADD CONSTRAINT `purchase_lines_purchase_id_purchases_id_fk` FOREIGN KEY (`purchase_id`) REFERENCES `purchases`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `purchase_lines` ADD CONSTRAINT `purchase_lines_item_id_items_id_fk` FOREIGN KEY (`item_id`) REFERENCES `items`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `purchases` ADD CONSTRAINT `purchases_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `purchases` ADD CONSTRAINT `purchases_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `purchases` ADD CONSTRAINT `purchases_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `receivable_history` ADD CONSTRAINT `receivable_history_receivable_id_receivables_id_fk` FOREIGN KEY (`receivable_id`) REFERENCES `receivables`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `receivable_history` ADD CONSTRAINT `receivable_history_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `receivables` ADD CONSTRAINT `receivables_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `receivables` ADD CONSTRAINT `receivables_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `receivables` ADD CONSTRAINT `receivables_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `reconciliations` ADD CONSTRAINT `reconciliations_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `reconciliations` ADD CONSTRAINT `reconciliations_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `reconciliations` ADD CONSTRAINT `reconciliations_approved_by_users_id_fk` FOREIGN KEY (`approved_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `reconciliations` ADD CONSTRAINT `reconciliations_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `sales_entries` ADD CONSTRAINT `sales_entries_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `sales_entries` ADD CONSTRAINT `sales_entries_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `sales_entries` ADD CONSTRAINT `sales_entries_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `srd_ledger_daily` ADD CONSTRAINT `srd_ledger_daily_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `srd_ledger_daily` ADD CONSTRAINT `srd_ledger_daily_srd_id_inventory_departments_id_fk` FOREIGN KEY (`srd_id`) REFERENCES `inventory_departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `srd_ledger_daily` ADD CONSTRAINT `srd_ledger_daily_item_id_items_id_fk` FOREIGN KEY (`item_id`) REFERENCES `items`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `srd_stock_movements` ADD CONSTRAINT `srd_stock_movements_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `srd_stock_movements` ADD CONSTRAINT `srd_stock_movements_from_srd_id_inventory_departments_id_fk` FOREIGN KEY (`from_srd_id`) REFERENCES `inventory_departments`(`id`) ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `srd_stock_movements` ADD CONSTRAINT `srd_stock_movements_to_srd_id_inventory_departments_id_fk` FOREIGN KEY (`to_srd_id`) REFERENCES `inventory_departments`(`id`) ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `srd_stock_movements` ADD CONSTRAINT `srd_stock_movements_item_id_items_id_fk` FOREIGN KEY (`item_id`) REFERENCES `items`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `srd_transfers` ADD CONSTRAINT `srd_transfers_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `srd_transfers` ADD CONSTRAINT `srd_transfers_from_srd_id_inventory_departments_id_fk` FOREIGN KEY (`from_srd_id`) REFERENCES `inventory_departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `srd_transfers` ADD CONSTRAINT `srd_transfers_to_srd_id_inventory_departments_id_fk` FOREIGN KEY (`to_srd_id`) REFERENCES `inventory_departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `srd_transfers` ADD CONSTRAINT `srd_transfers_item_id_items_id_fk` FOREIGN KEY (`item_id`) REFERENCES `items`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `srd_transfers` ADD CONSTRAINT `srd_transfers_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `stock_counts` ADD CONSTRAINT `stock_counts_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `stock_counts` ADD CONSTRAINT `stock_counts_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `stock_counts` ADD CONSTRAINT `stock_counts_store_department_id_inventory_departments_id_fk` FOREIGN KEY (`store_department_id`) REFERENCES `inventory_departments`(`id`) ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `stock_counts` ADD CONSTRAINT `stock_counts_item_id_items_id_fk` FOREIGN KEY (`item_id`) REFERENCES `items`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `stock_counts` ADD CONSTRAINT `stock_counts_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `stock_movement_lines` ADD CONSTRAINT `stock_movement_lines_movement_id_stock_movements_id_fk` FOREIGN KEY (`movement_id`) REFERENCES `stock_movements`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `stock_movement_lines` ADD CONSTRAINT `stock_movement_lines_item_id_items_id_fk` FOREIGN KEY (`item_id`) REFERENCES `items`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `stock_movements` ADD CONSTRAINT `stock_movements_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `stock_movements` ADD CONSTRAINT `stock_movements_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `stock_movements` ADD CONSTRAINT `stock_movements_approved_by_users_id_fk` FOREIGN KEY (`approved_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `stock_movements` ADD CONSTRAINT `stock_movements_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `store_issue_lines` ADD CONSTRAINT `store_issue_lines_store_issue_id_store_issues_id_fk` FOREIGN KEY (`store_issue_id`) REFERENCES `store_issues`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `store_issue_lines` ADD CONSTRAINT `store_issue_lines_item_id_items_id_fk` FOREIGN KEY (`item_id`) REFERENCES `items`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `store_issues` ADD CONSTRAINT `store_issues_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `store_issues` ADD CONSTRAINT `store_issues_from_department_id_inventory_departments_id_fk` FOREIGN KEY (`from_department_id`) REFERENCES `inventory_departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `store_issues` ADD CONSTRAINT `store_issues_to_department_id_inventory_departments_id_fk` FOREIGN KEY (`to_department_id`) REFERENCES `inventory_departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `store_issues` ADD CONSTRAINT `store_issues_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `store_names` ADD CONSTRAINT `store_names_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `store_names` ADD CONSTRAINT `store_names_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `store_stock` ADD CONSTRAINT `store_stock_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `store_stock` ADD CONSTRAINT `store_stock_store_department_id_inventory_departments_id_fk` FOREIGN KEY (`store_department_id`) REFERENCES `inventory_departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `store_stock` ADD CONSTRAINT `store_stock_item_id_items_id_fk` FOREIGN KEY (`item_id`) REFERENCES `items`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `store_stock` ADD CONSTRAINT `store_stock_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `subscriptions` ADD CONSTRAINT `subscriptions_organization_id_organizations_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `organizations`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `suppliers` ADD CONSTRAINT `suppliers_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `surplus_history` ADD CONSTRAINT `surplus_history_surplus_id_surpluses_id_fk` FOREIGN KEY (`surplus_id`) REFERENCES `surpluses`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `surplus_history` ADD CONSTRAINT `surplus_history_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `surpluses` ADD CONSTRAINT `surpluses_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `surpluses` ADD CONSTRAINT `surpluses_department_id_departments_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `surpluses` ADD CONSTRAINT `surpluses_created_by_users_id_fk` FOREIGN KEY (`created_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `system_settings` ADD CONSTRAINT `system_settings_updated_by_users_id_fk` FOREIGN KEY (`updated_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_client_access` ADD CONSTRAINT `user_client_access_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_client_access` ADD CONSTRAINT `user_client_access_client_id_clients_id_fk` FOREIGN KEY (`client_id`) REFERENCES `clients`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_client_access` ADD CONSTRAINT `user_client_access_assigned_by_users_id_fk` FOREIGN KEY (`assigned_by`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_settings` ADD CONSTRAINT `user_settings_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `users` ADD CONSTRAINT `users_organization_id_organizations_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `organizations`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
CREATE INDEX `audit_logs_created_at_idx` ON `audit_logs` (`created_at`);