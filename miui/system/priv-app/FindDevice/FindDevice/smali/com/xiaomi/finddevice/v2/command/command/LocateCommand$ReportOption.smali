.class public abstract Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;
.super Ljava/lang/Object;
.source "LocateCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ReportOption"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBinaryReplyContent([B)[B
.end method

.method public abstract getBinaryReplyType()B
.end method

.method public abstract getJSONReplyContent(Lorg/json/JSONObject;)Lorg/json/JSONObject;
.end method

.method public abstract getStringReplyType()Ljava/lang/String;
.end method
