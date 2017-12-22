.class public Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;
.super Ljava/lang/Object;
.source "PhoneInfoUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivationInfo"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public phoneTicket:Ljava/lang/String;

.field public simId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "phoneTicket"    # Ljava/lang/String;
    .param p3, "simId"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->id:Ljava/lang/String;

    .line 247
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->phoneTicket:Ljava/lang/String;

    .line 248
    iput-object p3, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->simId:Ljava/lang/String;

    .line 245
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ActivationInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->id:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    const-string/jumbo v1, ", phoneTicket=\'"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->phoneTicket:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    const-string/jumbo v1, ", simId=\'"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->simId:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    const/16 v1, 0x7d

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
