.class final Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager$1;
.super Ljava/lang/Object;
.source "AbsDeviceCredentialManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager;->notifyDeviceCredentialChangeToListener(Lcom/xiaomi/finddevice/v2/IDeviceCredential;Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deviceCredential:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

.field final synthetic val$listener:Landroid/util/Pair;


# direct methods
.method constructor <init>(Landroid/util/Pair;Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V
    .locals 0
    .param p2, "val$deviceCredential"    # Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    .prologue
    .line 52
    .local p1, "val$listener":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;Landroid/os/Handler;>;"
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager$1;->val$listener:Landroid/util/Pair;

    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager$1;->val$deviceCredential:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager$1;->val$listener:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager$1;->val$deviceCredential:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    invoke-interface {v0, v1}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;->onDeviceCredentialChanged(Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V

    .line 54
    return-void
.end method
