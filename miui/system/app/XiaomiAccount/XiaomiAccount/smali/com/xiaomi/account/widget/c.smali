.class final Lcom/xiaomi/account/widget/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic nk:Lcom/xiaomi/account/widget/LockedDevicePreference;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/widget/LockedDevicePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/widget/c;->nk:Lcom/xiaomi/account/widget/LockedDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/widget/c;->nk:Lcom/xiaomi/account/widget/LockedDevicePreference;

    iget-object v1, p0, Lcom/xiaomi/account/widget/c;->nk:Lcom/xiaomi/account/widget/LockedDevicePreference;

    invoke-static {v1}, Lcom/xiaomi/account/widget/LockedDevicePreference;->pC(Lcom/xiaomi/account/widget/LockedDevicePreference;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/widget/c;->nk:Lcom/xiaomi/account/widget/LockedDevicePreference;

    invoke-static {v2}, Lcom/xiaomi/account/widget/LockedDevicePreference;->pD(Lcom/xiaomi/account/widget/LockedDevicePreference;)Lcom/xiaomi/account/data/LockedDeviceInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/widget/LockedDevicePreference;->pG(Lcom/xiaomi/account/widget/LockedDevicePreference;Landroid/app/Activity;Lcom/xiaomi/account/data/LockedDeviceInfo;)V

    return-void
.end method
