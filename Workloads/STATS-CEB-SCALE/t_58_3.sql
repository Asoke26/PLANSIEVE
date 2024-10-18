SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount >= 6.0
AND p.FavoriteCount >= 55.0
AND pl.LinkTypeId = 1
AND ph.PostHistoryTypeId = 1
AND u.Reputation >= 239
AND u.DownVotes >= 6
AND u.DownVotes <= 21
AND u.UpVotes <= 662
AND v.CreationDate >= 343
AND u.CreationDate <= 1293

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;