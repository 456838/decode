.class Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory$1;
.super Ljava/lang/Object;
.source "V1SmsCommandFactory.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->getCipherPartDecoder(Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;

.field final synthetic val$skey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;
    .param p2, "val$skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory$1;->this$0:Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;

    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory$1;->val$skey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeCipherPart([B[B)Ljava/io/DataInputStream;
    .locals 2
    .param p1, "cipherPartContent"    # [B
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory$1;->this$0:Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory$1;->val$skey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    invoke-virtual {v0, p1, v1, p2}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->decodeCipherPart([BLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;[B)Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method
