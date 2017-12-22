.class public Lcom/xiaomi/phonenum/a/l;
.super Lcom/xiaomi/phonenum/a/s;
.source ""


# instance fields
.field private adK:Lcom/xiaomi/phonenum/utils/n;

.field private adL:Lcom/xiaomi/phonenum/a/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/a/e;Lcom/xiaomi/phonenum/a/g;)V
    .locals 1
    .param p1    # Lcom/xiaomi/phonenum/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/phonenum/a/s;-><init>(Lcom/xiaomi/phonenum/a/n;Lcom/xiaomi/phonenum/a/g;)V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/l;->adK:Lcom/xiaomi/phonenum/utils/n;

    iput-object p1, p0, Lcom/xiaomi/phonenum/a/l;->adL:Lcom/xiaomi/phonenum/a/e;

    return-void
.end method


# virtual methods
.method public ann(I)Lcom/xiaomi/phonenum/bean/a;
    .locals 3

    new-instance v0, Lcom/xiaomi/phonenum/a/a;

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/l;->aek:Lcom/xiaomi/phonenum/c/j;

    invoke-direct {v0, v1}, Lcom/xiaomi/phonenum/a/a;-><init>(Lcom/xiaomi/phonenum/c/j;)V

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/l;->adL:Lcom/xiaomi/phonenum/a/e;

    invoke-static {v1}, Lcom/xiaomi/phonenum/a/e;->anp(Lcom/xiaomi/phonenum/a/e;)Lcom/xiaomi/phonenum/c/h;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/l;->adL:Lcom/xiaomi/phonenum/a/e;

    invoke-static {v2}, Lcom/xiaomi/phonenum/a/e;->anq(Lcom/xiaomi/phonenum/a/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaomi/phonenum/a/a;->ang(ILcom/xiaomi/phonenum/c/h;Ljava/lang/String;)Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/phonenum/a/l;->anS(ILjava/lang/String;)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method
