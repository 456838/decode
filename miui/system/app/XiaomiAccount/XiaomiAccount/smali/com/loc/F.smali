.class public Lcom/loc/F;
.super Lcom/loc/ab;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/loc/ab",
        "<",
        "Ljava/lang/String;",
        "Lcom/loc/J;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lcom/loc/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected avV(Ljava/lang/String;Lcom/loc/J;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/loc/J;->g()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "OfflineFileCache"

    const-string/jumbo v3, "sizeOf"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected avW(ZLjava/lang/String;Lcom/loc/J;Lcom/loc/J;)V
    .locals 3

    if-nez p3, :cond_0

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loc/ab;->avY(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/loc/J;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "OfflineFileCache"

    const-string/jumbo v2, "entryRemoved"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic avX(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/loc/J;

    invoke-virtual {p0, p1, p2}, Lcom/loc/F;->avV(Ljava/lang/String;Lcom/loc/J;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic avY(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/loc/J;

    check-cast p4, Lcom/loc/J;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/loc/F;->avW(ZLjava/lang/String;Lcom/loc/J;Lcom/loc/J;)V

    return-void
.end method
