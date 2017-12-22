.class public Lcom/loc/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ajC:Lcom/loc/cn;

.field private ajD:Lcom/loc/e;


# direct methods
.method public constructor <init>(Lcom/loc/e;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/loc/j;-><init>(Lcom/loc/e;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/loc/e;JJ)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/j;->ajD:Lcom/loc/e;

    iget-object v1, p1, Lcom/loc/e;->ajv:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/loc/e;->ajv:Ljava/net/Proxy;

    :cond_0
    new-instance v1, Lcom/loc/cn;

    iget-object v2, p0, Lcom/loc/j;->ajD:Lcom/loc/e;

    iget v2, v2, Lcom/loc/e;->a:I

    iget-object v3, p0, Lcom/loc/j;->ajD:Lcom/loc/e;

    iget v3, v3, Lcom/loc/e;->b:I

    invoke-direct {v1, v2, v3, v0}, Lcom/loc/cn;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Lcom/loc/j;->ajC:Lcom/loc/cn;

    iget-object v0, p0, Lcom/loc/j;->ajC:Lcom/loc/cn;

    invoke-virtual {v0, p4, p5}, Lcom/loc/cn;->aFw(J)V

    iget-object v0, p0, Lcom/loc/j;->ajC:Lcom/loc/cn;

    invoke-virtual {v0, p2, p3}, Lcom/loc/cn;->a(J)V

    return-void
.end method


# virtual methods
.method public auk(Lcom/loc/be;)V
    .locals 4

    iget-object v0, p0, Lcom/loc/j;->ajC:Lcom/loc/cn;

    iget-object v1, p0, Lcom/loc/j;->ajD:Lcom/loc/e;

    invoke-virtual {v1}, Lcom/loc/e;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/j;->ajD:Lcom/loc/e;

    invoke-virtual {v2}, Lcom/loc/e;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/j;->ajD:Lcom/loc/e;

    invoke-virtual {v3}, Lcom/loc/e;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/loc/cn;->aFx(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/loc/be;)V

    return-void
.end method
