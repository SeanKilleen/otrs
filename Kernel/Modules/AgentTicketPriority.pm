# --
# Kernel/Modules/AgentTicketPriority.pm - set ticket priority
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: AgentTicketPriority.pm,v 1.76 2010-06-18 17:34:00 en Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AgentTicketPriority;

use strict;
use warnings;

use Kernel::Modules::AgentTicketActionCommon;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.76 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    my $Self = {%Param};
    bless( $Self, $Type );

    $Self = Kernel::Modules::AgentTicketActionCommon->new(%Param);

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    return Kernel::Modules::AgentTicketActionCommon->Run( \@_ );
}

1;
