.class public Lcom/xiaomi/phonenum/c/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field aev:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field aew:Ljava/lang/String;

.field aex:Ljava/lang/String;

.field aey:Ljava/lang/String;

.field code:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/phonenum/c/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/xiaomi/phonenum/c/a;->code:I

    iput v0, p0, Lcom/xiaomi/phonenum/c/b;->code:I

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/b;->aew:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/a;->aes:Ljava/util/Map;

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/b;->aev:Ljava/util/Map;

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/a;->aet:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/b;->aex:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/a;->aeu:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/b;->aey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public anU(Ljava/util/Map;)Lcom/xiaomi/phonenum/c/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/xiaomi/phonenum/c/b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/phonenum/c/b;->aev:Ljava/util/Map;

    return-object p0
.end method

.method public anV(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/c/b;->aew:Ljava/lang/String;

    return-object p0
.end method

.method public anW(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/c/b;->aex:Ljava/lang/String;

    return-object p0
.end method

.method public anX(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/c/b;->aey:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/phonenum/c/a;
    .locals 1

    new-instance v0, Lcom/xiaomi/phonenum/c/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/phonenum/c/a;-><init>(Lcom/xiaomi/phonenum/c/b;)V

    return-object v0
.end method

.method public code(I)Lcom/xiaomi/phonenum/c/b;
    .locals 0

    iput p1, p0, Lcom/xiaomi/phonenum/c/b;->code:I

    return-object p0
.end method
