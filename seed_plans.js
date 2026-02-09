
const mysql = require('mysql2/promise');

async function seedPlans() {
    const connection = await mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'auditops'
    });

    try {
        const plans = [
            {
                slug: 'starter',
                display_name: 'Starter',
                description: 'Daily audit essentials for small operations',
                monthly_price: '49999.00',
                quarterly_price: '142497.00',
                yearly_price: '509990.00', // ~15% off
                currency: 'NGN',
                max_clients: 1,
                max_srd_departments_per_client: 4,
                max_main_store_per_client: 1,
                max_seats: 2,
                retention_days: 30,
                can_view_reports: true,
                can_download_reports: false,
                can_print_reports: false,
                can_access_purchases_register_page: false,
                can_access_second_hit_page: false,
                can_download_second_hit_full_table: false,
                can_download_main_store_ledger_summary: false,
                is_active: true
            },
            {
                slug: 'growth',
                display_name: 'Growth',
                description: 'Strong controls for growing audit teams',
                monthly_price: '79999.00',
                quarterly_price: '227997.00',
                yearly_price: '815990.00',
                currency: 'NGN',
                max_clients: 1,
                max_srd_departments_per_client: 7,
                max_main_store_per_client: 1,
                max_seats: 5,
                retention_days: 90,
                can_view_reports: true,
                can_download_reports: true,
                can_print_reports: true,
                can_access_purchases_register_page: false,
                can_access_second_hit_page: false, // Page visible but locked actions?
                can_download_second_hit_full_table: false,
                can_download_main_store_ledger_summary: false,
                is_active: true
            },
            {
                slug: 'business',
                display_name: 'Business',
                description: 'Full reporting power for audit firms',
                monthly_price: '129999.00',
                quarterly_price: '370497.00',
                yearly_price: '1325990.00',
                currency: 'NGN',
                max_clients: 1,
                max_srd_departments_per_client: 12,
                max_main_store_per_client: 1,
                max_seats: 12,
                retention_days: 365,
                can_view_reports: true,
                can_download_reports: true,
                can_print_reports: true,
                can_access_purchases_register_page: true,
                can_access_second_hit_page: true,
                can_download_second_hit_full_table: true,
                can_download_main_store_ledger_summary: true,
                is_active: true
            },
            {
                slug: 'enterprise',
                display_name: 'Enterprise',
                description: 'Unlimited scale + priority support',
                monthly_price: '199999.00',
                quarterly_price: '569997.00',
                yearly_price: '2039990.00',
                currency: 'NGN',
                max_clients: 999, // unlimited effectively
                max_srd_departments_per_client: 999,
                max_main_store_per_client: 1,
                max_seats: 999,
                retention_days: 3650, // 10 years
                can_view_reports: true,
                can_download_reports: true,
                can_print_reports: true,
                can_access_purchases_register_page: true,
                can_access_second_hit_page: true,
                can_download_second_hit_full_table: true,
                can_download_main_store_ledger_summary: true,
                is_active: true
            }
        ];

        for (const plan of plans) {
            // Check if exists
            const [existing] = await connection.query("SELECT id FROM subscription_plans WHERE slug = ?", [plan.slug]);

            if (existing.length === 0) {
                console.log(`Seeding plan: ${plan.slug}`);
                // Using prepared statements for safety, though keys are hardcoded above
                const keys = Object.keys(plan);
                const values = Object.values(plan);
                const placeholders = keys.map(() => '?').join(',');
                const sql = `INSERT INTO subscription_plans (${keys.join(',')}) VALUES (${placeholders})`;

                await connection.query(sql, values);
            } else {
                console.log(`Plan already exists: ${plan.slug}`);
            }
        }
        console.log('Seeding complete.');

    } catch (err) {
        console.error('Seeding failed:', err.message);
    } finally {
        await connection.end();
    }
}

seedPlans();
