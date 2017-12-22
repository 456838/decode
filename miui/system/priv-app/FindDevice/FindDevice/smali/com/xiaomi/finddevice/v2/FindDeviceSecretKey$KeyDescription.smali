.class public Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;
.super Ljava/lang/Object;
.source "FindDeviceSecretKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyDescription"
.end annotation


# instance fields
.field public encryptAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;->encryptAlgorithm:Ljava/lang/String;

    .line 21
    return-void
.end method
