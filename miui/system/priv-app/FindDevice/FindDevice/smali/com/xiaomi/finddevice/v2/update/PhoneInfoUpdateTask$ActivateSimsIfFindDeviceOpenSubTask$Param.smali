.class public Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;
.super Ljava/lang/Object;
.source "PhoneInfoUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field public final activateMethod:I

.field public final simIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "simIndex"    # I
    .param p2, "activateMethod"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->simIndex:I

    .line 127
    iput p2, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->activateMethod:I

    .line 125
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    if-ne p0, p1, :cond_0

    return v1

    .line 132
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 134
    check-cast v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    .line 136
    .local v0, "param":Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;
    iget v3, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->simIndex:I

    iget v4, v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->simIndex:I

    if-eq v3, v4, :cond_3

    return v2

    .line 137
    :cond_3
    iget v3, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->activateMethod:I

    iget v4, v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->activateMethod:I

    if-ne v3, v4, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 141
    iget v0, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->simIndex:I

    .line 142
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->activateMethod:I

    add-int v0, v1, v2

    .line 143
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Param{simIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget v1, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->simIndex:I

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    const-string/jumbo v1, ", activateMethod="

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    iget v1, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->activateMethod:I

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const/16 v1, 0x7d

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
