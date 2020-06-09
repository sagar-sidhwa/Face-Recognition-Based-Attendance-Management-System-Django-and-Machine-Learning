# Generated by Django 3.0.1 on 2020-01-04 05:26

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('face', '0003_uimage'),
    ]

    operations = [
        migrations.CreateModel(
            name='UVideo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('classno', models.CharField(max_length=10)),
                ('lecture', models.CharField(max_length=10)),
                ('slotno', models.CharField(max_length=10)),
                ('dt', models.DateTimeField()),
                ('ipadd', models.CharField(max_length=40)),
                ('t', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='face.Teacher')),
            ],
        ),
    ]
