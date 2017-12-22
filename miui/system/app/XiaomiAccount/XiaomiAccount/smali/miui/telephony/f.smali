.class final Lmiui/telephony/f;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aue:Lmiui/telephony/e;


# direct methods
.method constructor <init>(Lmiui/telephony/e;)V
    .locals 0

    iput-object p1, p0, Lmiui/telephony/f;->aue:Lmiui/telephony/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lmiui/telephony/f;->aue:Lmiui/telephony/e;

    const-string/jumbo v1, "device_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/telephony/e;->aIn(Ljava/lang/Object;)V

    return-void
.end method
