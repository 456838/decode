.class public Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;
.super Ljava/lang/Object;
.source "FindDevicePublicKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyDescription"
.end annotation


# instance fields
.field public keyType:Ljava/lang/String;

.field public signAlgorithm:Ljava/lang/String;

.field public signLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "DSA"

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->keyType:Ljava/lang/String;

    .line 21
    const/16 v0, 0x28

    iput v0, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->signLen:I

    .line 22
    const-string/jumbo v0, "DSA"

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->signAlgorithm:Ljava/lang/String;

    .line 19
    return-void
.end method
