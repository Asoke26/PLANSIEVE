SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 2
AND p.Score >= 20
AND u.Reputation >= 1512
AND u.UpVotes >= 89
AND u.UpVotes <= 915

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;