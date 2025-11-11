Redshift Module
=====================
encrypted is set to false by default. Enable it if you require encryption at rest.

skip_final_snapshot is set to true to avoid manual snapshots before deletion. Set to false in production to keep a final snapshot.

The maintenance_window must be in the format Day:HH:MM-Day:HH:MM in 24-hour UTC.

CloudWatch logging exports connection logs, user logs, and user activity logs.