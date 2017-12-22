.class public Lcom/xiaomi/accountsdk/request/R;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final Za:Lcom/xiaomi/accountsdk/utils/EasyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/utils/EasyMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final Zb:Lcom/xiaomi/accountsdk/utils/EasyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/utils/EasyMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final Zc:Lcom/xiaomi/accountsdk/utils/EasyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/utils/EasyMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final Zd:Lcom/xiaomi/accountsdk/utils/EasyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/utils/EasyMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected Ze:Z

.field protected Zf:Ljava/lang/Integer;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Zd:Lcom/xiaomi/accountsdk/utils/EasyMap;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Zc:Lcom/xiaomi/accountsdk/utils/EasyMap;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Zb:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/R;->Ze:Z

    iput-object v1, p0, Lcom/xiaomi/accountsdk/request/R;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/accountsdk/request/R;->Zf:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public agM()Lcom/xiaomi/accountsdk/request/R;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/request/R;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/R;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/R;->agQ(Lcom/xiaomi/accountsdk/request/R;)V

    return-object v0
.end method

.method public agN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/R;->url:Ljava/lang/String;

    return-void
.end method

.method public agO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahx(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    return-void
.end method

.method public agP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Zc:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahx(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    return-void
.end method

.method protected final agQ(Lcom/xiaomi/accountsdk/request/R;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Zd:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/R;->agR(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/R;->agT(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Zb:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/R;->agU(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Zc:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/R;->agS(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/R;->agN(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/request/R;->Ze:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/R;->agV(Z)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Zf:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/R;->agW(Ljava/lang/Integer;)V

    return-void
.end method

.method public agR(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Zd:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public agS(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Zc:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public agT(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public agU(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/R;->Zb:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public agV(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/request/R;->Ze:Z

    return-void
.end method

.method public agW(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/R;->Zf:Ljava/lang/Integer;

    return-void
.end method
