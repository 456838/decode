.class public Lcom/xiaomi/finddevice/adapter/UsbManagerAdapter;
.super Ljava/lang/Object;
.source "UsbManagerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static offUsbTransfer(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 8
    const-string/jumbo v1, "usb"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 9
    .local v0, "um":Landroid/hardware/usb/UsbManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 7
    return-void
.end method
