.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;
.super Ljava/lang/Object;
.source "FindDeviceKeyguard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageRecord"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

.field public viewAttached:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->name:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    .line 27
    return-void
.end method
