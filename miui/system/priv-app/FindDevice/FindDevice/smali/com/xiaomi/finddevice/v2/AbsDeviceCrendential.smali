.class public abstract Lcom/xiaomi/finddevice/v2/AbsDeviceCrendential;
.super Ljava/lang/Object;
.source "AbsDeviceCrendential.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/IDeviceCredential;


# instance fields
.field private volatile mSignError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearSignError()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/AbsDeviceCrendential;->mSignError:Z

    .line 15
    return-void
.end method

.method public hasSignError()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/AbsDeviceCrendential;->mSignError:Z

    return v0
.end method

.method public onSignError()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/AbsDeviceCrendential;->mSignError:Z

    .line 6
    return-void
.end method
