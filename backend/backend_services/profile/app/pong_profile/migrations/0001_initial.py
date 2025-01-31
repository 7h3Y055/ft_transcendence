# Generated by Django 5.1.4 on 2025-01-04 11:49

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Player',
            fields=[
                ('id', models.AutoField(db_index=True, primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=60, unique=True)),
                ('email', models.EmailField(max_length=255, null=True, unique=True)),
                ('first_name', models.CharField(max_length=30, null=True)),
                ('last_name', models.CharField(max_length=30, null=True)),
                ('avatar_url', models.URLField(null=True)),
                ('status', models.CharField(choices=[('ON', 'online'), ('OF', 'offline'), ('IG', 'in-game')], default='ON', max_length=2)),
                ('two_FA', models.BooleanField(default=False)),
                ('created_at', models.DateTimeField(auto_now_add=True, null=True)),
            ],
            options={
                'abstract': False,
            },
        ),
    ]
