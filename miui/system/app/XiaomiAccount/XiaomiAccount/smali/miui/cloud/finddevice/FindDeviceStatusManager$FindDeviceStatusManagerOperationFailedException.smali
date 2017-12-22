.class public Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerOperationFailedException;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public code:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-direct {p0, v0, p1}, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerOperationFailedException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerOperationFailedException;->code:I

    return-void
.end method
