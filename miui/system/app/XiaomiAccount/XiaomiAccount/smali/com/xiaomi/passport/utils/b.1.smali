.class public final Lcom/xiaomi/passport/utils/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zG:Lcom/xiaomi/passport/utils/c;

.field private static volatile zH:Lcom/xiaomi/passport/utils/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/utils/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/utils/d;-><init>(Lcom/xiaomi/passport/utils/d;)V

    sput-object v0, Lcom/xiaomi/passport/utils/b;->zG:Lcom/xiaomi/passport/utils/c;

    sget-object v0, Lcom/xiaomi/passport/utils/b;->zG:Lcom/xiaomi/passport/utils/c;

    sput-object v0, Lcom/xiaomi/passport/utils/b;->zH:Lcom/xiaomi/passport/utils/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Da()V
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/utils/b;->zH:Lcom/xiaomi/passport/utils/c;

    invoke-interface {v0}, Lcom/xiaomi/passport/utils/c;->Dc()V

    return-void
.end method

.method public static Db()V
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/utils/b;->zH:Lcom/xiaomi/passport/utils/c;

    invoke-interface {v0}, Lcom/xiaomi/passport/utils/c;->Dd()V

    return-void
.end method
