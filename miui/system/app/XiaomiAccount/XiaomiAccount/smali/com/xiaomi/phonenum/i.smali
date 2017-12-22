.class Lcom/xiaomi/phonenum/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/xiaomi/phonenum/bean/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic afA:Lcom/xiaomi/phonenum/a;

.field final synthetic afx:I

.field final synthetic afy:Z

.field final synthetic afz:Lcom/xiaomi/phonenum/utils/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/a;IZLcom/xiaomi/phonenum/utils/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/i;->afA:Lcom/xiaomi/phonenum/a;

    iput p2, p0, Lcom/xiaomi/phonenum/i;->afx:I

    iput-boolean p3, p0, Lcom/xiaomi/phonenum/i;->afy:Z

    iput-object p4, p0, Lcom/xiaomi/phonenum/i;->afz:Lcom/xiaomi/phonenum/utils/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/xiaomi/phonenum/bean/a;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/i;->afA:Lcom/xiaomi/phonenum/a;

    iget v1, p0, Lcom/xiaomi/phonenum/i;->afx:I

    iget-boolean v2, p0, Lcom/xiaomi/phonenum/i;->afy:Z

    iget-object v3, p0, Lcom/xiaomi/phonenum/i;->afz:Lcom/xiaomi/phonenum/utils/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/a;->aow(IZLcom/xiaomi/phonenum/utils/b;)Lcom/xiaomi/phonenum/bean/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/phonenum/bean/Error;->aco:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/phonenum/bean/Error;->alF(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/phonenum/i;->call()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method
