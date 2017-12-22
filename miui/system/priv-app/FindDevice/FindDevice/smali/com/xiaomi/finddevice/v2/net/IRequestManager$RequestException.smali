.class public Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
.super Ljava/lang/Exception;
.source "IRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/net/IRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestException"
.end annotation


# instance fields
.field public response:Lmiui/cloud/net/XHttpClient$HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lmiui/cloud/net/XHttpClient$HttpResponse;)V
    .locals 0
    .param p1, "response"    # Lmiui/cloud/net/XHttpClient$HttpResponse;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 85
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v2}, Lmiui/cloud/net/XHttpClient$HttpResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    return-object v0
.end method
