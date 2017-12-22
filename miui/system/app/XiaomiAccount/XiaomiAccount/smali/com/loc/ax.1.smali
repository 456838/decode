.class Lcom/loc/ax;
.super Landroid/telephony/PhoneStateListener;
.source ""


# instance fields
.field final synthetic anp:Lcom/loc/v;


# direct methods
.method constructor <init>(Lcom/loc/v;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ax;->anp:Lcom/loc/v;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ax;->anp:Lcom/loc/v;

    invoke-virtual {v0, p1}, Lcom/loc/v;->avr(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ax;->anp:Lcom/loc/v;

    invoke-static {v0, p1}, Lcom/loc/v;->avB(Lcom/loc/v;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "initPhoneStateListener7"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/loc/ax;->anp:Lcom/loc/v;

    invoke-static {v0}, Lcom/loc/v;->avE(Lcom/loc/v;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "initPhoneStateListener4"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/ax;->anp:Lcom/loc/v;

    invoke-static {v0}, Lcom/loc/v;->avF(Lcom/loc/v;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSignalStrengthChanged(I)V
    .locals 3

    const/16 v0, -0x71

    :try_start_0
    iget-object v1, p0, Lcom/loc/ax;->anp:Lcom/loc/v;

    invoke-static {v1}, Lcom/loc/v;->avC(Lcom/loc/v;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/loc/ax;->anp:Lcom/loc/v;

    invoke-static {v1, v0}, Lcom/loc/v;->avD(Lcom/loc/v;I)V

    :goto_1
    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/loc/bd;->a(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/loc/bd;->a(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "initPhoneStateListener6"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    if-eqz p1, :cond_0

    const/16 v0, -0x71

    :try_start_0
    iget-object v1, p0, Lcom/loc/ax;->anp:Lcom/loc/v;

    invoke-static {v1}, Lcom/loc/v;->avC(Lcom/loc/v;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/loc/ax;->anp:Lcom/loc/v;

    invoke-static {v1, v0}, Lcom/loc/v;->avD(Lcom/loc/v;I)V

    :goto_1
    return-void

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    invoke-static {v0}, Lcom/loc/bd;->a(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "initPhoneStateListener5"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
