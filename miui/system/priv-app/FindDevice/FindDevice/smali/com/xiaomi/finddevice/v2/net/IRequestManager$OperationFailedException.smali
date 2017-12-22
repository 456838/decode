.class public Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
.super Ljava/lang/Exception;
.source "IRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/net/IRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationFailedException"
.end annotation


# instance fields
.field public response:Lmiui/cloud/net/XHttpClient$HttpResponse;

.field public retryAfter:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmiui/cloud/net/XHttpClient$HttpResponse;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "response"    # Lmiui/cloud/net/XHttpClient$HttpResponse;

    .prologue
    .line 116
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;-><init>(Ljava/lang/String;Lmiui/cloud/net/XHttpClient$HttpResponse;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/cloud/net/XHttpClient$HttpResponse;I)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "response"    # Lmiui/cloud/net/XHttpClient$HttpResponse;
    .param p3, "retryAfter"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 111
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 112
    iput p3, p0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->retryAfter:I

    .line 109
    return-void
.end method

.method public constructor <init>(Lmiui/cloud/net/XHttpClient$HttpResponse;I)V
    .locals 1
    .param p1, "response"    # Lmiui/cloud/net/XHttpClient$HttpResponse;
    .param p2, "retryAfter"    # I

    .prologue
    .line 121
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;-><init>(Ljava/lang/String;Lmiui/cloud/net/XHttpClient$HttpResponse;I)V

    .line 120
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 3

    .prologue
    .line 125
    const/4 v0, -0x1

    .line 127
    .local v0, "code":I
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v2, v2, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, v2, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 129
    .local v1, "jsonRespones":Lorg/json/JSONObject;
    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 132
    .end local v1    # "jsonRespones":Lorg/json/JSONObject;
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    if-eqz v1, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v2}, Lmiui/cloud/net/XHttpClient$HttpResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    return-object v0
.end method
