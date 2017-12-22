.class public Lcom/xiaomi/accountsdk/activate/o;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static abn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "android.intent.action.XIAOMI_ACTIVATE_PHONE"

    sput-object v0, Lcom/xiaomi/accountsdk/activate/o;->abn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
