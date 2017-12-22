.class Lcom/loc/aQ;
.super Lcom/loc/e;
.source ""


# instance fields
.field private aoc:Lcom/loc/ah;


# direct methods
.method constructor <init>(Lcom/loc/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/e;-><init>()V

    iput-object p1, p0, Lcom/loc/aQ;->aoc:Lcom/loc/ah;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/aQ;->aoc:Lcom/loc/ah;

    invoke-virtual {v0}, Lcom/loc/ah;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
