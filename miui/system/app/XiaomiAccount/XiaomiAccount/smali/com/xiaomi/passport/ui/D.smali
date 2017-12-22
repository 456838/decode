.class public final Lcom/xiaomi/passport/ui/D;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private so:Z

.field private sp:Z

.field private sq:Ljava/lang/String;

.field private sr:Ljava/lang/String;

.field private ss:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/D;->so:Z

    iput p1, p0, Lcom/xiaomi/passport/ui/D;->ss:I

    return-void
.end method


# virtual methods
.method public xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/D;->sr:Ljava/lang/String;

    return-object p0
.end method

.method public xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/D;->sq:Ljava/lang/String;

    return-object p0
.end method

.method public xI()Lcom/xiaomi/passport/ui/C;
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/D;->sp:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "dialog has been created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/D;->sp:Z

    new-instance v0, Lcom/xiaomi/passport/ui/C;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/C;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/xiaomi/passport/ui/D;->sr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "msg_res_id"

    iget-object v3, p0, Lcom/xiaomi/passport/ui/D;->sq:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "cancelable"

    iget-boolean v3, p0, Lcom/xiaomi/passport/ui/D;->so:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "type"

    iget v3, p0, Lcom/xiaomi/passport/ui/D;->ss:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/C;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public xJ(Z)Lcom/xiaomi/passport/ui/D;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/passport/ui/D;->so:Z

    return-object p0
.end method
