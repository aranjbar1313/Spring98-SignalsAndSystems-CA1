import numpy as np
import matplotlib
matplotlib.use('PDF')  # noqa
from matplotlib import pyplot as plt


plt.rc('text', usetex=True)
plt.rc('font', family='serif')


def heaviside(t):
    return (t >= 0) * 1


def f(t):
    return t * (heaviside(t) - heaviside(t - 2))


if __name__ == '__main__':
    t = np.arange(-3, 6, 0.1)

    g = []
    g.append("f(t + 1)")
    g.append("f(-t + 1)")
    g.append("f(-2 * t + 1)")

    fig = plt.figure(figsize=plt.figaspect(2 / 2) * 1.3)

    ax = fig.add_subplot(221)
    ax.plot(t, f(t))
    ax.set_xlabel(r"$n$")
    ax.set_ylabel(r"$f(t)$")
    ax.set_title(r"$f(t) = t \cdot \big(u(t) - u(t - 2)\big)$")

    for i in range(len(g)):
        ax = fig.add_subplot(2, 2, i + 2)
        ax.plot(t, f(t), label=r"$f(t)$")
        ax.plot(t, eval(g[i]), label=(r"$g_%i(t)$" % (i + 1)))
        ax.set_xlabel(r"$n$")
        ax.set_title(r"$g_%i(t) = %s$" % (i + 1, g[i]))
        ax.legend()

    # fig.suptitle("Time Shifting")
    fig.set_tight_layout(True)
    fig.savefig("../output/3-2")
    # plt.show()