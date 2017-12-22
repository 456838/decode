.class public Lcom/xiaomi/phonenum/c/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final aeO:Ljava/net/URI;

.field public final aeP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final aeQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final followRedirects:Z

.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/phonenum/c/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/c;->aez:Ljava/net/URI;

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/h;->aeO:Ljava/net/URI;

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/c;->aez:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/h;->url:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/c;->aeA:Ljava/util/Map;

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/h;->aeP:Ljava/util/Map;

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/c;->aeB:Ljava/util/Map;

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/h;->aeQ:Ljava/util/Map;

    iget-boolean v0, p1, Lcom/xiaomi/phonenum/c/c;->followRedirects:Z

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/c/h;->followRedirects:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/phonenum/c/c;Lcom/xiaomi/phonenum/c/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/c/h;-><init>(Lcom/xiaomi/phonenum/c/c;)V

    return-void
.end method
