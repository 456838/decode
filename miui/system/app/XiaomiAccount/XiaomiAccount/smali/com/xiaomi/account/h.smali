.class public Lcom/xiaomi/account/h;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rG(Landroid/content/Context;Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;)Ljava/lang/String;
    .locals 4

    const v0, 0x7f0c0167

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p2, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;->errno:I

    sparse-switch v1, :sswitch_data_0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v3, v0, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerOperationFailedException;

    if-eqz v3, :cond_3

    check-cast v0, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerOperationFailedException;

    iget v0, v0, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerOperationFailedException;->code:I

    sparse-switch v0, :sswitch_data_1

    move v0, v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eq v0, v2, :cond_2

    const-string/jumbo v1, "("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const v0, 0x7f0c015e

    move v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0c015f

    move v1, v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0c0160

    move v1, v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c0161

    move v1, v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0c0162

    move v1, v0

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0c0163

    move v1, v0

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0c0164

    move v1, v0

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0c0165

    move v1, v0

    goto :goto_0

    :sswitch_8
    const v0, 0x7f0c0166

    move v1, v0

    goto :goto_0

    :sswitch_9
    move v1, v0

    goto :goto_0

    :sswitch_a
    const v0, 0x7f0c0168

    goto :goto_1

    :sswitch_b
    const v0, 0x7f0c0169

    goto :goto_1

    :sswitch_c
    const v0, 0x7f0c016a

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_7
        -0x8 -> :sswitch_6
        -0x7 -> :sswitch_8
        -0x6 -> :sswitch_5
        -0x5 -> :sswitch_4
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_c
        0x15000 -> :sswitch_a
        0x15010 -> :sswitch_b
    .end sparse-switch
.end method

.method public rH(Landroid/content/Context;Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p2, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;->errno:I

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0c016d

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const v0, 0x7f0c016c

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_0
    .end packed-switch
.end method

.method public rI(Landroid/content/Context;Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p2, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;->errno:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
