.class public Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
.super Ljava/lang/Exception;
.source "PriviledgedProc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/PriviledgedProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationFailedException"
.end annotation


# static fields
.field public static ENOENT:I

.field public static ENOTDIR:I


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;->ENOENT:I

    .line 33
    const/16 v0, 0x14

    sput v0, Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;->ENOTDIR:I

    .line 15
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 20
    iput p1, p0, Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;->code:I

    .line 21
    iput-object p2, p0, Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;->msg:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OperationFailerException{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    iget v1, p0, Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;->code:I

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    const-string/jumbo v1, ", msg=\'"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;->msg:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    const/16 v1, 0x27

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    const/16 v1, 0x7d

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
