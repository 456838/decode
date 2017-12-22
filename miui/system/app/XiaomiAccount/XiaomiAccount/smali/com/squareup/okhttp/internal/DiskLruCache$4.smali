.class Lcom/squareup/okhttp/internal/DiskLruCache$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/m;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public timeout()Lokio/e;
    .locals 1

    sget-object v0, Lokio/e;->NONE:Lokio/e;

    return-object v0
.end method

.method public write(Lokio/i;J)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lokio/i;->skip(J)V

    return-void
.end method
