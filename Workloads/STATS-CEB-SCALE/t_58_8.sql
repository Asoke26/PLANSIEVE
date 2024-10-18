SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount >= 5.0
AND p.FavoriteCount >= 18.0
AND pl.LinkTypeId = 1
AND ph.PostHistoryTypeId = 16
AND u.Reputation >= 556
AND u.DownVotes >= 42
AND u.DownVotes <= 82
AND u.UpVotes <= 163
AND v.CreationDate >= 1245
AND u.CreationDate <= 514

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;