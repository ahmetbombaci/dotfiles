#!/usr/bin/python3

from datetime import date as d; 
import create_tweet
import click
import random


def unemployed_days():
    return (d.today() - d(2021, 8, 31)).days

def congresswoman_days():
    return (d.today() - d(2021, 11, 30)).days

def rfe_days():
    return (d.today() - d(2021, 11, 24)).days

def sr_days():
    return (d.today() - d(2022, 1, 31)).days

def ombud_days():
    return (d.today() - d(2022, 2, 1)).days

message_type = ['unemployed', 'congresswoman', 'ombudsman','rfe', 'sr']

def prepare_message(mtype):
    if mtype == 'unemployed':
        return 'Unemployed, uninsured, no income {} days.'.format(unemployed_days());
    elif mtype == 'congresswoman':
        return 'No reply to congresswoman {} days.'.format(congresswoman_days()); 
    elif mtype == 'ombudsman':
        return 'No reply from CIS Ombudsman {} days.'.format(ombud_days()); 
    elif mtype == 'rfe':
        return 'No action to RFE response {} days.'.format(rfe_days()); 
    elif mtype == 'sr':
        return 'No response to service request {} days.'.format(sr_days()); 
    else:
        return 'USCIS sucks, so does my tweet'

@click.command()
@click.option('--print/--no-print', default=True)
@click.option('--tweet/--no-tweet', default=False)
@click.option('--mtype', type=click.Choice(message_type + ['all', 'random'], case_sensitive=False)
        , help='message type')
def cli(print, tweet, mtype):
    message = '#USCISSucks '
    if mtype == 'all':
        for t in message_type:
            message += prepare_message(t) + '\n'
    elif mtype == 'random':
        message +=  prepare_message(random.choice(message_type));
    else:
        message +=  prepare_message(mtype);

    if print:
        click.echo(message)

    if tweet:
        create_tweet.create_tweet(message)

if __name__ == '__main__':
    cli()

