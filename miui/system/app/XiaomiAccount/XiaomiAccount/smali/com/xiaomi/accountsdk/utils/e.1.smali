.class public abstract Lcom/xiaomi/accountsdk/utils/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Zk:Lcom/xiaomi/accountsdk/utils/e;

.field private static Zl:Lcom/xiaomi/accountsdk/utils/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/utils/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/f;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/e;->Zk:Lcom/xiaomi/accountsdk/utils/e;

    sget-object v0, Lcom/xiaomi/accountsdk/utils/e;->Zk:Lcom/xiaomi/accountsdk/utils/e;

    sput-object v0, Lcom/xiaomi/accountsdk/utils/e;->Zl:Lcom/xiaomi/accountsdk/utils/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ahe(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/e;->ahi()Lcom/xiaomi/accountsdk/utils/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/e;->oX(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ahf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/e;->ahi()Lcom/xiaomi/accountsdk/utils/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/e;->oY(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static ahg(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/e;->ahi()Lcom/xiaomi/accountsdk/utils/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/e;->oZ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/e;->ahi()Lcom/xiaomi/accountsdk/utils/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/e;->pa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static ahi()Lcom/xiaomi/accountsdk/utils/e;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/e;->Zl:Lcom/xiaomi/accountsdk/utils/e;

    return-object v0
.end method

.method public static ahj(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/e;->ahi()Lcom/xiaomi/accountsdk/utils/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/e;->pb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ahk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/e;->ahi()Lcom/xiaomi/accountsdk/utils/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/e;->pc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static ahl(Lcom/xiaomi/accountsdk/utils/e;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "log == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Lcom/xiaomi/accountsdk/utils/e;->Zl:Lcom/xiaomi/accountsdk/utils/e;

    return-void
.end method

.method public static ahm(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/e;->ahi()Lcom/xiaomi/accountsdk/utils/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/e;->pd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ahn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/e;->ahi()Lcom/xiaomi/accountsdk/utils/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/e;->pe(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static aho(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/e;->ahi()Lcom/xiaomi/accountsdk/utils/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/e;->pf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/e;->ahi()Lcom/xiaomi/accountsdk/utils/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/e;->pg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract oX(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract oY(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract oZ(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract pa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract pb(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract pc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract pd(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract pe(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract pf(Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract pg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method
