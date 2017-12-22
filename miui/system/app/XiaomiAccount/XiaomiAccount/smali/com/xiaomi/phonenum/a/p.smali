.class Lcom/xiaomi/phonenum/a/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic adX:I

.field final synthetic adY:Lcom/xiaomi/phonenum/c/h;

.field final synthetic adZ:Ljava/lang/String;

.field final synthetic aea:Lcom/xiaomi/phonenum/a/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/a/g;ILcom/xiaomi/phonenum/c/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/a/p;->aea:Lcom/xiaomi/phonenum/a/g;

    iput p2, p0, Lcom/xiaomi/phonenum/a/p;->adX:I

    iput-object p3, p0, Lcom/xiaomi/phonenum/a/p;->adY:Lcom/xiaomi/phonenum/c/h;

    iput-object p4, p0, Lcom/xiaomi/phonenum/a/p;->adZ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/a/p;->aea:Lcom/xiaomi/phonenum/a/g;

    invoke-static {v0}, Lcom/xiaomi/phonenum/a/g;->anw(Lcom/xiaomi/phonenum/a/g;)Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    const-string/jumbo v1, "ObtainHandler"

    const-string/jumbo v2, "start inNetTimeMethod"

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/phonenum/a/a;

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/p;->aea:Lcom/xiaomi/phonenum/a/g;

    iget-object v1, v1, Lcom/xiaomi/phonenum/a/g;->adz:Lcom/xiaomi/phonenum/c/j;

    invoke-direct {v0, v1}, Lcom/xiaomi/phonenum/a/a;-><init>(Lcom/xiaomi/phonenum/c/j;)V

    iget v1, p0, Lcom/xiaomi/phonenum/a/p;->adX:I

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/p;->adY:Lcom/xiaomi/phonenum/c/h;

    iget-object v3, p0, Lcom/xiaomi/phonenum/a/p;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/a/a;->ang(ILcom/xiaomi/phonenum/c/h;Ljava/lang/String;)Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/p;->aea:Lcom/xiaomi/phonenum/a/g;

    invoke-static {v1}, Lcom/xiaomi/phonenum/a/g;->anw(Lcom/xiaomi/phonenum/a/g;)Lcom/xiaomi/phonenum/utils/n;

    move-result-object v1

    const-string/jumbo v2, "ObtainHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inNetTimeMethod response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/phonenum/utils/n;->amE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/p;->aea:Lcom/xiaomi/phonenum/a/g;

    iget v2, p0, Lcom/xiaomi/phonenum/a/p;->adX:I

    iget-object v0, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/phonenum/a/g;->ans(ILjava/lang/String;)Lcom/xiaomi/phonenum/bean/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/p;->aea:Lcom/xiaomi/phonenum/a/g;

    invoke-static {v1}, Lcom/xiaomi/phonenum/a/g;->anw(Lcom/xiaomi/phonenum/a/g;)Lcom/xiaomi/phonenum/utils/n;

    move-result-object v1

    const-string/jumbo v2, "ObtainHandler"

    const-string/jumbo v3, "inNetTimeMethod IOEx"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
