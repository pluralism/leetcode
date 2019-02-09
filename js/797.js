const pathAux = (graph, current, currenPath, paths) => {
    if(current === graph.length - 1) {
        paths.push(currenPath);
    }

    for(let edge of graph[current]) {
        pathAux(graph, edge, [...currenPath, edge], paths);
    }

    return paths;
};

const allPathsSourceTarget = (graph) => {
    return pathAux(graph, 0, [0], []);
};