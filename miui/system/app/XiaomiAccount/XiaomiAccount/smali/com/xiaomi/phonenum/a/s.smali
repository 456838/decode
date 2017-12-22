.class public abstract Lcom/xiaomi/phonenum/a/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/phonenum/a/h;


# static fields
.field private static aen:Lcom/xiaomi/phonenum/utils/n;


# instance fields
.field final aej:Lcom/xiaomi/phonenum/utils/a;

.field final aek:Lcom/xiaomi/phonenum/c/j;

.field final ael:Ljava/lang/String;

.field final aem:Ljava/lang/String;

.field private aeo:Lcom/xiaomi/phonenum/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/phonenum/a/s;->aen:Lcom/xiaomi/phonenum/utils/n;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/phonenum/a/n;Lcom/xiaomi/phonenum/a/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/phonenum/a/n;->anI(Lcom/xiaomi/phonenum/a/n;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/s;->ael:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/a/n;->anJ(Lcom/xiaomi/phonenum/a/n;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/s;->aem:Ljava/lang/String;

    iget-object v0, p2, Lcom/xiaomi/phonenum/a/g;->ady:Lcom/xiaomi/phonenum/utils/a;

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/s;->aej:Lcom/xiaomi/phonenum/utils/a;

    iget-object v0, p2, Lcom/xiaomi/phonenum/a/g;->adz:Lcom/xiaomi/phonenum/c/j;

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/s;->aek:Lcom/xiaomi/phonenum/c/j;

    iput-object p2, p0, Lcom/xiaomi/phonenum/a/s;->aeo:Lcom/xiaomi/phonenum/a/g;

    return-void
.end method


# virtual methods
.method anS(ILjava/lang/String;)Lcom/xiaomi/phonenum/bean/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/s;->aeo:Lcom/xiaomi/phonenum/a/g;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/phonenum/a/g;->ans(ILjava/lang/String;)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method

.method anT(ILjava/lang/String;Z)Lcom/xiaomi/phonenum/bean/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/s;->aeo:Lcom/xiaomi/phonenum/a/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/phonenum/a/g;->ant(ILjava/lang/String;Z)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method
