.class public Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;
.super Ljava/lang/Object;
.source "V1SmsCommandDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandInfo"
.end annotation


# instance fields
.field seqno:J

.field timestamp:J

.field type:S

.field uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
