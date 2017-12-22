.class Lcom/xiaomi/mistatistic/sdk/f;
.super Lcom/xiaomi/mistatistic/sdk/a$a;
.source ""


# instance fields
.field final synthetic aja:Lcom/xiaomi/mistatistic/sdk/BaseService;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/BaseService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/f;->aja:Lcom/xiaomi/mistatistic/sdk/BaseService;

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/f;->aja:Lcom/xiaomi/mistatistic/sdk/BaseService;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/BaseService;->atE(Lcom/xiaomi/mistatistic/sdk/BaseService;)Lcom/xiaomi/mistatistic/sdk/a/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/D;->e()I

    move-result v0

    return v0
.end method

.method public a(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/f;->aja:Lcom/xiaomi/mistatistic/sdk/BaseService;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/BaseService;->atE(Lcom/xiaomi/mistatistic/sdk/BaseService;)Lcom/xiaomi/mistatistic/sdk/a/D;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/D;->arf(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ats(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/f;->aja:Lcom/xiaomi/mistatistic/sdk/BaseService;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/BaseService;->atE(Lcom/xiaomi/mistatistic/sdk/BaseService;)Lcom/xiaomi/mistatistic/sdk/a/D;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/D;->ara(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    return-object v0
.end method
