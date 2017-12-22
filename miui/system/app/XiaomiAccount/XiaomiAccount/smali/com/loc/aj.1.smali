.class Lcom/loc/aj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/loc/P;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic amV:Lcom/loc/aV;


# direct methods
.method constructor <init>(Lcom/loc/aV;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/aj;->amV:Lcom/loc/aV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ayo(Lcom/loc/P;Lcom/loc/P;)I
    .locals 2

    invoke-virtual {p2}, Lcom/loc/P;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/loc/P;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/loc/P;

    check-cast p2, Lcom/loc/P;

    invoke-virtual {p0, p1, p2}, Lcom/loc/aj;->ayo(Lcom/loc/P;Lcom/loc/P;)I

    move-result v0

    return v0
.end method
