.class public interface abstract Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;
.super Ljava/lang/Object;
.source "PersistentStroage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/PersistentStroage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDataHandler"
.end annotation


# virtual methods
.method public abstract onHandleData([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException;
        }
    .end annotation
.end method
