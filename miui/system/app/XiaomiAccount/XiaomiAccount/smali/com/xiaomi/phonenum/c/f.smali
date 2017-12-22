.class public Lcom/xiaomi/phonenum/c/f;
.super Lcom/xiaomi/phonenum/c/j;
.source ""


# instance fields
.field private aeM:Lcom/xiaomi/phonenum/utils/a;

.field private aeN:Lcom/xiaomi/phonenum/utils/n;


# direct methods
.method public constructor <init>(Lcom/xiaomi/phonenum/utils/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/phonenum/c/j;-><init>()V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/f;->aeN:Lcom/xiaomi/phonenum/utils/n;

    iput-object p1, p0, Lcom/xiaomi/phonenum/c/f;->aeM:Lcom/xiaomi/phonenum/utils/a;

    return-void
.end method

.method static synthetic aoi(Lcom/xiaomi/phonenum/c/f;)Lcom/xiaomi/phonenum/utils/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/c/f;->aeM:Lcom/xiaomi/phonenum/utils/a;

    return-object v0
.end method

.method static synthetic aoj(Lcom/xiaomi/phonenum/c/f;)Lcom/xiaomi/phonenum/utils/n;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/c/f;->aeN:Lcom/xiaomi/phonenum/utils/n;

    return-object v0
.end method


# virtual methods
.method public aoh(Lcom/xiaomi/phonenum/c/d;)Lcom/xiaomi/phonenum/c/n;
    .locals 3

    new-instance v0, Lcom/xiaomi/phonenum/c/l;

    new-instance v1, Lcom/xiaomi/phonenum/c/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/xiaomi/phonenum/c/e;-><init>(Lcom/xiaomi/phonenum/c/f;Lcom/xiaomi/phonenum/c/d;Lcom/xiaomi/phonenum/c/k;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/phonenum/c/l;-><init>(Lcom/xiaomi/phonenum/c/n;)V

    return-object v0
.end method
