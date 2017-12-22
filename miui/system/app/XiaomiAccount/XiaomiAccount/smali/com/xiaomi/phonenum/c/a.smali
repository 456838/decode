.class public Lcom/xiaomi/phonenum/c/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final aer:Ljava/lang/String;

.field public final aes:Ljava/util/Map;
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

.field public final aet:Ljava/lang/String;

.field public final aeu:Ljava/lang/String;

.field public final code:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/phonenum/c/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/xiaomi/phonenum/c/b;->code:I

    iput v0, p0, Lcom/xiaomi/phonenum/c/a;->code:I

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/b;->aew:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/b;->aev:Ljava/util/Map;

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/a;->aes:Ljava/util/Map;

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/b;->aex:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/a;->aet:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/b;->aey:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/a;->aeu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/phonenum/c/a;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", body:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
