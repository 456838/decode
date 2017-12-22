.class final Lcom/xiaomi/account/guestaccount/h;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source ""


# instance fields
.field final synthetic ig:Lcom/xiaomi/account/guestaccount/GuestAccountSyncService;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/guestaccount/GuestAccountSyncService;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/guestaccount/h;->ig:Lcom/xiaomi/account/guestaccount/GuestAccountSyncService;

    invoke-direct {p0, p2, p3}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0

    return-void
.end method
