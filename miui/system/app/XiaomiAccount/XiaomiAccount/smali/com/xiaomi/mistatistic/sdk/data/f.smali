.class public abstract Lcom/xiaomi/mistatistic/sdk/data/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected air:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->air:J

    return-void
.end method


# virtual methods
.method public abstract asL()Ljava/lang/String;
.end method

.method public abstract asM()Lorg/json/JSONObject;
.end method

.method public abstract asN()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
.end method
