.class final Lcom/xiaomi/account/widget/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic nj:Lcom/xiaomi/account/widget/LockedDevicePreference;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/widget/LockedDevicePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/widget/b;->nj:Lcom/xiaomi/account/widget/LockedDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/widget/b;->nj:Lcom/xiaomi/account/widget/LockedDevicePreference;

    invoke-static {v0}, Lcom/xiaomi/account/widget/LockedDevicePreference;->pF(Lcom/xiaomi/account/widget/LockedDevicePreference;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
