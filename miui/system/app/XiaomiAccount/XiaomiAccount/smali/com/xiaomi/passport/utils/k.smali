.class public Lcom/xiaomi/passport/utils/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/xiaomi/passport/utils/k;",
        ">;"
    }
.end annotation


# instance fields
.field Aa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zW:Ljava/lang/String;

.field public zX:Ljava/lang/String;

.field public zY:Ljava/lang/String;

.field zZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/utils/k;->zW:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/passport/utils/k;->zX:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/utils/k;->zY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public DF(Lcom/xiaomi/passport/utils/k;)I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/utils/k;->zW:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/passport/utils/k;->zW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/passport/utils/k;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/utils/k;->DF(Lcom/xiaomi/passport/utils/k;)I

    move-result v0

    return v0
.end method
