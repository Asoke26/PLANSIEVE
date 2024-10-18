SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 24
AND p.ViewCount >= 134.0
AND p.ViewCount <= 1959.0
AND p.AnswerCount >= 2.0
AND p.CommentCount >= 2
AND p.CommentCount <= 45
AND p.FavoriteCount <= 18.0
AND u.Views >= 66
AND u.DownVotes >= 7
AND u.DownVotes <= 49
AND u.UpVotes >= 386
AND u.UpVotes <= 2219
AND ph.CreationDate >= 173
AND ph.CreationDate <= 1342
AND p.CreationDate >= 332
AND p.CreationDate <= 938

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;