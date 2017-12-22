.class public Lcom/xiaomi/account/guestaccount/GuestAccountSyncService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static ia:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountSyncService;->ia:Landroid/content/AbstractThreadedSyncAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountSyncService;->ia:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sget-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountSyncService;->ia:Landroid/content/AbstractThreadedSyncAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/guestaccount/h;

    invoke-virtual {p0}, Lcom/xiaomi/account/guestaccount/GuestAccountSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/account/guestaccount/h;-><init>(Lcom/xiaomi/account/guestaccount/GuestAccountSyncService;Landroid/content/Context;Z)V

    sput-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountSyncService;->ia:Landroid/content/AbstractThreadedSyncAdapter;

    :cond_0
    return-void
.end method
