.class public Lcom/xiaomi/accountsdk/request/w;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afs(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/accountsdk/request/g;"
        }
    .end annotation

    const/4 v5, 0x0

    check-cast v5, Lcom/xiaomi/accountsdk/utils/p;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/request/w;->afu(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Lcom/xiaomi/accountsdk/request/g;

    move-result-object v0

    return-object v0
.end method

.method public static aft(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Lcom/xiaomi/accountsdk/request/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/p;",
            ")",
            "Lcom/xiaomi/accountsdk/request/g;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/xiaomi/accountsdk/request/m;->ael(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-static {p2}, Lcom/xiaomi/accountsdk/request/m;->aem(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/m;->aen(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    check-cast v6, Ljava/lang/Integer;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/accountsdk/request/Q;->agG(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/g;

    move-result-object v0

    return-object v0
.end method

.method public static afu(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Lcom/xiaomi/accountsdk/request/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/p;",
            ")",
            "Lcom/xiaomi/accountsdk/request/g;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/xiaomi/accountsdk/request/m;->ael(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-static {p2}, Lcom/xiaomi/accountsdk/request/m;->aem(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/m;->aen(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    check-cast v6, Ljava/lang/Integer;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/accountsdk/request/Q;->agH(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/g;

    move-result-object v0

    return-object v0
.end method

.method public static afv(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/accountsdk/request/g;"
        }
    .end annotation

    const/4 v5, 0x0

    check-cast v5, Lcom/xiaomi/accountsdk/utils/p;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/request/w;->aft(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Lcom/xiaomi/accountsdk/request/g;

    move-result-object v0

    return-object v0
.end method

.method public static afw(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/accountsdk/request/f;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Lcom/xiaomi/accountsdk/utils/p;

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/accountsdk/request/w;->afx(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/Integer;)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    return-object v0
.end method

.method public static afx(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/Integer;)Lcom/xiaomi/accountsdk/request/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/p;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/xiaomi/accountsdk/request/f;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/m;->ael(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-static {p2}, Lcom/xiaomi/accountsdk/request/m;->aem(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/m;->aen(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/accountsdk/request/Q;->agF(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    return-object v0
.end method

.method public static afy(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/accountsdk/request/f;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/xiaomi/accountsdk/request/m;->aem(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/request/m;->aen(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object v5, v0

    check-cast v5, Lcom/xiaomi/accountsdk/utils/p;

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/accountsdk/request/Q;->agI(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    return-object v0
.end method
