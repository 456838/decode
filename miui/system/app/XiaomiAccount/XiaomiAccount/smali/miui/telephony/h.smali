.class final Lmiui/telephony/h;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic auf:Lmiui/telephony/i;

.field final synthetic aug:Lmiui/telephony/TelephonyManager;

.field final synthetic auh:I


# direct methods
.method constructor <init>(Lmiui/telephony/i;Lmiui/telephony/TelephonyManager;I)V
    .locals 0

    iput-object p1, p0, Lmiui/telephony/h;->auf:Lmiui/telephony/i;

    iput-object p2, p0, Lmiui/telephony/h;->aug:Lmiui/telephony/TelephonyManager;

    iput p3, p0, Lmiui/telephony/h;->auh:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "IMSI"

    const-string/jumbo v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/telephony/h;->auf:Lmiui/telephony/i;

    iget-object v1, p0, Lmiui/telephony/h;->aug:Lmiui/telephony/TelephonyManager;

    iget v2, p0, Lmiui/telephony/h;->auh:I

    invoke-static {v1, v2}, Lmiui/telephony/d;->aIm(Lmiui/telephony/TelephonyManager;I)Lmiui/telephony/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/telephony/i;->aIo(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
