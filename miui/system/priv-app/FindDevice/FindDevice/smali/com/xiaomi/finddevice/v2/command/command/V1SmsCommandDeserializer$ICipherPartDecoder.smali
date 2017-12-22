.class public interface abstract Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;
.super Ljava/lang/Object;
.source "V1SmsCommandDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICipherPartDecoder"
.end annotation


# virtual methods
.method public abstract decodeCipherPart([B[B)Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;
        }
    .end annotation
.end method
