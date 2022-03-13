from setuptools import setup

setup(
    name='uscis_sucks',
    version='0.1.0',
    py_modules=['uscis_sucks'],
    install_requires=[
        'Click',
    ],
    entry_points={
        'console_scripts': [
            'uscis_sucks = uscis_sucks:cli',
        ],
    },
)
